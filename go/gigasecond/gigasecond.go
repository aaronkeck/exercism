// Package gigasecond modifies time stamps by 10^9 (1,000,000,000) seconds.
package gigasecond

// import path for the time package from the standard library
import "time"

// AddGigasecond returns a time (10^9 seconds) past the given time.
func AddGigasecond(t time.Time) time.Time {
	gigasecond := time.Duration(1000000000) * time.Second
	return t.Add(gigasecond)
}
