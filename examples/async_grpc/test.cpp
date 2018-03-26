// This example is an adaptation of one found in Louis Dionne's dyno library.
#include <folly/Poly.h>
#include <folly/stats/Histogram.h>
#include <iostream>

struct IDrawable {
    // Define the interface of something that can be drawn:
    template <class Base> struct Interface : Base {
        void draw(std::ostream& out) const { folly::poly_call<0>(*this, out);}
    };
    // Define how concrete types can fulfill that interface (in C++17):
    template <class T> using Members = folly::PolyMembers<&T::draw>;
};

// Define an object that can hold anything that can be drawn:
using drawable = folly::Poly<IDrawable>;

struct Square {
    void draw(std::ostream& out) const { out << "Square\n"; }
};

struct Circle {
    void draw(std::ostream& out) const { out << "Circle\n"; }
};

void f(drawable const& d) {
    d.draw(std::cout);
}

int main() {
    f(Square{}); // prints Square
    f(Circle{}); // prints Circle

    {
        folly::Histogram<int64_t> latencies(100, 0, 500);

        for (int i = 0; i < 10; i++) {
            latencies.addValue(i);
        }
    
        latencies.addValue(121);

        unsigned int numBuckets = latencies.getNumBuckets();
        std::cout << "Below min: " << latencies.getBucketByIndex(0).count
                  << std::endl;
        for (unsigned int n = 1; n < numBuckets - 1; ++n) {
            std::cout << latencies.getBucketMin(n)
                      << "-" << latencies.getBucketMax(n)
                      << ": " << latencies.getBucketByIndex(n).count
                      << std::endl;
        }
        std::cout << "Above max: "
                  << latencies.getBucketByIndex(numBuckets - 1).count
                  << std::endl;

        std::cout << "Median: " << latencies.getPercentileEstimate(0.5)
                  << std::endl;
        std::cout << "99th percentile: "
                  << latencies.getPercentileEstimate(0.95)
                  << std::endl;
        std::cout << "99th percentile: "
                  << latencies.getPercentileEstimate(0.99)
                  << std::endl;
    }
}
