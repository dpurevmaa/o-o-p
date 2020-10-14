//
// Created by Purevmaa Damdinsuren on 10/13/20.
//

#ifndef TIMESPAN_TIMESPAN_H
#define TIMESPAN_TIMESPAN_H

#endif

#include "iostream"

class TimeSpan
{

private:

    double hours_;
    double minutes_;
    double seconds_;

    void convertFracToWholeNum();
    void normalize();

public:

    // Constructor

    TimeSpan();
    TimeSpan(double hours, double minutes, double seconds);
    TimeSpan(double minutes, double seconds);
    TimeSpan(double seconds);

    // Getters

    int getHours() const;
    int getMinutes() const;
    int getSeconds() const;

    // Setters

    bool setTime(int hours, int minutes, int seconds);

    // Operators

    TimeSpan operator+=(const TimeSpan& rhs);
    TimeSpan operator+(const TimeSpan& rhs) const;

    TimeSpan operator-=(const TimeSpan& rhs);
    TimeSpan operator-(const TimeSpan& rhs) const;

    TimeSpan operator==(const TimeSpan& rhs) const;
    TimeSpan operator!=(const TimeSpan& rhs) const;

    TimeSpan operator-();

    // Stream I/O

    friend std::ostream& operator<<(std::ostream& output, const TimeSpan& ts);
    friend std::istream& operator>>(std::istream& input, TimeSpan& ts);

};

