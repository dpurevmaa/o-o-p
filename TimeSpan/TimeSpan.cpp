//
// Created by Purevmaa Damdinsuren on 10/14/20.
//

#include "TimeSpan.h"
#include "iostream"
using namespace std;

// Constructor

TimeSpan::TimeSpan()
{
    hours_ = 0;
    minutes_ = 0;
    seconds_ = 0;
}

TimeSpan::TimeSpan(double seconds)
{
    hours_ = 0;
    minutes_ = 0;
    seconds_ = seconds;
    convertFracToWholeNum();
    normalize();
}

TimeSpan::TimeSpan(double minutes, double seconds)
{
    hours_ = 0;
    minutes_ = minutes;
    seconds_ = seconds;
    convertFracToWholeNum();
    normalize();
}

TimeSpan::TimeSpan(double hours, double minutes, double seconds)
{
    hours_ = hours;
    minutes_ = minutes;
    seconds_ = seconds;
    convertFracToWholeNum();
    normalize();
}

// Getters

int TimeSpan::getHours() const
{
    return (int)hours_;
}

int TimeSpan::getMinutes() const
{
    return (int)minutes_;
}

int TimeSpan::getSeconds() const
{
    return (int)seconds_;
}

// Setters

bool TimeSpan::setTime(int hours, int minutes, int seconds)
{
    hours_ = hours;
    minutes_ = minutes;
    seconds_ = seconds;
    convertFracToWholeNum();
    normalize();
}

// Operators

TimeSpan TimeSpan::operator+=(const TimeSpan &rhs) {
    hours_ += rhs.hours_;
    minutes_ += rhs.minutes_;
    seconds_ += rhs.seconds_;
    normalize();
    return *this;
}

TimeSpan TimeSpan::operator+(const TimeSpan &rhs) const {
    TimeSpan temp(hours_ + rhs.hours_, minutes_ + rhs.hours_, seconds_ + rhs.seconds_);
    return temp;
}

TimeSpan TimeSpan::operator-=(const TimeSpan &rhs) {
    hours_ -= rhs.hours_;
    minutes_ -= rhs.minutes_;
    seconds_ -= rhs.seconds_;
    normalize();
    return *this;
}

TimeSpan TimeSpan::operator-(const TimeSpan &rhs) const
{
    TimeSpan temp(hours_ - rhs.hours_, minutes_ - rhs.hours_, seconds_ - rhs.seconds_);
    return temp;
}

bool TimeSpan::operator==(const TimeSpan &rhs) const
{
    return (hours_ == rhs.hours_ && minutes_ == rhs.minutes_ && seconds_ == rhs.seconds_);
}

bool TimeSpan::operator!=(const TimeSpan &rhs) const
{
    return (hours_ != rhs.hours_ || minutes_ != rhs.minutes_ || seconds_ != rhs.seconds_);
}

TimeSpan TimeSpan::operator-()
{
    hours_ = -hours_;
    minutes_ = -minutes_;
    seconds_ = -seconds_;
    normalize();
}

// Stream I/O

ostream& operator<<(ostream &output, const TimeSpan &ts)
{
    output << "Time Duration: " << ts.hours_ << " hour(s), " << ts.minutes_ << " minute(s), " <<
    ts.seconds_ << " second(s)." << endl;

    return output;
}

istream& operator>>(istream &input, TimeSpan &ts)
{
    input >> ts.hours_ >> ts.minutes_ >> ts.seconds_;
    ts.convertFracToWholeNum();
    ts.normalize();
    return input;
}

// Private helper functions

void TimeSpan::convertFracToWholeNum()
{
    // hours_ fraction to minutes_
    minutes_ += (hours_ - (int)hours_) * 60;
    hours_ = (int)hours_;

    // minutes_ fraction to seconds_
    seconds_ += (minutes_ - (int)minutes_) * 60;
    minutes_ = (int)minutes_;

    // rounding seconds_ to nearest whole number
    if (seconds_ >= 0) {
        seconds_ = (int)(seconds_ + 0.5);
    } else {
        seconds_ = (int)(seconds_ - 0.5);
    }
}

void TimeSpan::normalize()
{
    if (seconds_ >= 0) {
        while (seconds_ >= 60) {
            seconds_ -= 60;
            minutes_++;
        }

        if (minutes_ >= 0) {
            while (minutes_ >= 60) {
                minutes_ -= 60;
                hours_++;
            }

            if (hours_ < 0) {
                hours_++;
                minutes_ -= 59;
                seconds_ -= 60;
            }
        } else {
            while (minutes_ <= -60) {
                minutes_ -= -60;
                hours_--;
            }
            minutes_++;
            seconds_ -= 60;
            if (hours_ >= 0) {
                hours_--;
                minutes_ += 59;
                seconds_ += 60;
            }
        }
    } else {
        while (seconds_ <= -60) {
            seconds_ -= -60;
            minutes_--;
        }

        if (minutes_ >= 0) {
            while (minutes_ >= 60) {
                minutes_ -= 60;
                hours_++;
            }
            minutes_--;
            seconds_ += 60;

            if (hours_ < 0) {
                hours_++;
                minutes_ -= 59;
                seconds_ -= 60;
            }
        } else {
            while (minutes_ <= -60) {
                minutes_ -= -60;
                hours_--;
            }

            if (hours_ >= 0) {
                hours_--;
                minutes_ += 59;
                seconds_ += 60;
            }
        }
    }
}