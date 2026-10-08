# Zomato Restaurant Market Analysis — Business Insights

## 1. Executive Summary

The analysis of 9,551 restaurants across 141 cities reveals several important patterns in restaurant pricing, customer ratings, engagement, delivery availability, table booking, and restaurant performance.

Overall, higher price ranges are associated with stronger customer ratings and engagement. Restaurants offering online delivery or table booking also show higher average ratings and customer engagement compared with restaurants without these services.

However, these relationships represent associations rather than causal effects.

---

# 2. Key Business Insights

## Insight 1 — Higher Price Ranges Are Associated with Higher Ratings

### Finding

Average restaurant ratings increase consistently across price ranges.

| Price Range | Restaurants | Average Rating |
|---|---:|---:|
| 1 | 4,444 | 2.00 |
| 2 | 3,113 | 2.94 |
| 3 | 1,408 | 3.68 |
| 4 | 586 | 3.82 |

### Business Meaning

Restaurants in higher price segments generally receive higher customer ratings.

Average rating increases from **2.00 in Price Range 1 to 3.82 in Price Range 4**.

This suggests a positive association between restaurant price positioning and customer-rated experience.

### Business Implication

Restaurants operating in lower price segments may have opportunities to improve customer experience, service quality, and consistency rather than relying only on low pricing.

> Note: Higher prices do not necessarily cause higher ratings. Other factors such as service quality, cuisine, location, and restaurant experience may contribute.

---

# 3. Price Range 3 Has the Highest Customer Engagement

### Finding

Average customer votes vary substantially across price ranges.

| Price Range | Average Votes |
|---|---:|
| 1 | 44.60 |
| 2 | 147.61 |
| 3 | 443.86 |
| 4 | 368.60 |

### Business Meaning

Price Range 3 receives the highest average number of customer votes, followed by Price Range 4.

This indicates that mid-to-upper priced restaurants generate substantially more customer engagement than lower-priced restaurants.

### Business Implication

Restaurants in Price Range 3 may represent an attractive segment for customer engagement and platform activity.

---

# 4. Online Delivery Is Associated with Higher Ratings and Engagement

### Finding

Restaurants offering online delivery perform better on both average rating and customer engagement.

| Online Delivery | Restaurants | Average Rating | Average Votes |
|---|---:|---:|---:|
| No | 7,100 | 2.47 | 138.13 |
| Yes | 2,451 | 3.25 | 211.31 |

### Business Meaning

Restaurants with online delivery have:

- **0.78 points higher average rating**
- Approximately **53% higher average votes**

than restaurants without online delivery.

### Business Implication

Online delivery may be an important part of a restaurant's customer experience and digital engagement strategy.

Restaurants without online delivery could evaluate whether adding delivery services would improve accessibility and customer engagement.

> Note: The analysis identifies an association, not a causal relationship.

---

# 5. Table Booking Is Strongly Associated with Higher Ratings and Engagement

### Finding

Restaurants offering table booking show substantially higher average ratings and customer engagement.

| Table Booking | Average Rating | Average Votes |
|---|---:|---:|
| No | 2.56 | 129.84 |
| Yes | 3.44 | 353.11 |

### Business Meaning

Restaurants with table booking have:

- **0.88 points higher average rating**
- More than **2.7× the average votes**

compared with restaurants without table booking.

### Business Implication

Table booking appears to be strongly associated with customer engagement and higher ratings.

For restaurants in higher price segments, offering reservation functionality may be particularly relevant.

---

# 6. Online Delivery Adoption Is Highest in Price Range 2

### Finding

Online delivery adoption varies significantly by price range.

| Price Range | Delivery Adoption |
|---|---:|
| 1 | 15.77% |
| 2 | 41.31% |
| 3 | 29.19% |
| 4 | 9.04% |

### Business Meaning

Price Range 2 has the highest online delivery adoption at **41.31%**.

Price Range 4 has the lowest adoption at only **9.04%**.

### Business Implication

The strongest opportunity for expanding delivery adoption may exist among restaurants in the mid-priced segment.

Higher-priced restaurants may require a different digital engagement strategy rather than simply increasing delivery availability.

---

# 7. Table Booking Is Concentrated in Higher Price Segments

### Finding

Table-booking adoption increases sharply with price range.

| Price Range | Table Booking Adoption |
|---|---:|
| 1 | 0.02% |
| 2 | 7.68% |
| 3 | 45.74% |
| 4 | 46.76% |

### Business Meaning

Table booking is almost nonexistent among Price Range 1 restaurants but is used by nearly half of restaurants in Price Ranges 3 and 4.

### Business Implication

Reservation functionality appears particularly relevant to higher-priced restaurants.

This suggests that Zomato could position table-booking features more strongly for premium and upper-mid-market restaurants.

---

# 8. Cuisine Categories Show Differences in Customer Ratings

### Finding

Several cuisine categories have relatively high average ratings among categories with at least 20 restaurants.

Top examples include:

| Cuisine Category | Restaurants | Average Rating |
|---|---:|---:|
| American | 31 | 3.67 |
| Italian | 54 | 3.66 |
| Italian, Pizza | 24 | 3.64 |
| Mexican | 36 | 3.64 |
| Continental | 21 | 3.57 |

### Business Meaning

American, Italian, Italian/Pizza, and Mexican cuisine categories demonstrate relatively strong customer ratings.

### Business Implication

Cuisine category can be useful when identifying restaurant segments associated with stronger customer satisfaction.

However, these results should be interpreted alongside restaurant count because some cuisine categories have relatively small samples.

---

# 9. Cuisine Categories Differ in Customer Engagement

### Finding

Some cuisine categories receive significantly higher average customer votes.

Examples include:

| Cuisine Category | Restaurants | Average Votes |
|---|---:|---:|
| North Indian, Continental | 28 | 384.29 |
| Italian | 54 | 274.06 |
| Burger, Desserts, Fast Food | 22 | 271.55 |
| Mughlai, North Indian | 60 | 254.58 |
| American | 31 | 251.68 |

### Business Meaning

Cuisine categories associated with popular or diverse dining preferences can generate substantial customer engagement.

### Business Implication

Zomato could use cuisine-level engagement data to improve:

- Restaurant discovery
- Personalized recommendations
- Cuisine-based promotions
- Search ranking strategies

---

# 10. City Markets Differ Significantly in Customer Engagement

### Finding

Average customer votes vary considerably across cities.

Examples of cities with high average engagement include:

| City | Average Votes |
|---|---:|
| Bangalore | 2,805.75 |
| Kolkata | 2,229.65 |
| Mumbai | 1,484.85 |
| Chennai | 1,384.75 |
| Tampa Bay | 1,370.35 |

### Business Meaning

Restaurant markets differ substantially in customer engagement.

Bangalore has the highest average votes among cities meeting the minimum restaurant-count threshold used in the analysis.

### Business Implication

Zomato could prioritize high-engagement cities for:

- Customer acquisition campaigns
- Restaurant partnerships
- Premium restaurant promotions
- Platform engagement initiatives

---

# 11. Restaurant Performance Segmentation

### Finding

Restaurants were segmented using two analytical thresholds:

- High Rating: Aggregate Rating >= 4.0
- High Engagement: Votes >= 100

This produced four performance segments.

| Performance Segment | Restaurants | Share |
|---|---:|---:|
| Lower Rating - Lower Engagement | 6,503 | 68.09% |
| High Engagement - Lower Rating | 1,668 | 17.46% |
| High Performing | 1,158 | 12.12% |
| High Rated - Low Engagement | 222 | 2.32% |

### Business Meaning

The majority of restaurants fall into the **Lower Rating - Lower Engagement** segment.

Only **1,158 restaurants**, or approximately **12.12%**, meet both the high-rating and high-engagement thresholds.

### Business Implication

The performance segmentation can help identify different strategic opportunities:

- **High Performing:** Promote and retain
- **High Rated - Low Engagement:** Improve visibility and discovery
- **High Engagement - Lower Rating:** Focus on customer experience
- **Lower Rating - Lower Engagement:** Require broader performance improvement

> The thresholds used here are analytical definitions created for this project and are not industry-standard benchmarks.

---

# 12. Restaurant Market Concentration

### Finding

The restaurant market is heavily concentrated in a small number of cities.

The largest restaurant markets include:

| City | Restaurants |
|---|---:|
| New Delhi | 5,473 |
| Gurgaon | 1,118 |
| Noida | 1,080 |
| Faridabad | 251 |

### Business Meaning

New Delhi represents by far the largest restaurant market in the dataset.

The concentration of restaurants in a small number of cities indicates that restaurant supply is not evenly distributed geographically.

### Business Implication

Zomato could use city-level market size to prioritize:

- Restaurant acquisition
- Sales teams
- Marketing campaigns
- Competitive analysis
- City-specific product strategies

---

# 13. Customer Rating Distribution

### Finding

A significant portion of restaurants are unrated.

There are **2,148 restaurants with a rating of 0**, representing approximately **22.49% of all restaurants**.

### Business Meaning

Nearly one in five restaurants in the dataset does not have a recorded customer rating.

The large number of unrated restaurants can make overall rating comparisons more difficult.

### Business Implication

Increasing customer review and rating participation could provide better signals for:

- Restaurant discovery
- Ranking systems
- Customer decision-making
- Restaurant performance monitoring

---

# 14. Key Recommendations

Based on the analysis, the following actions could be considered.

## Recommendation 1 — Improve engagement for high-rated restaurants

Restaurants with high ratings but low engagement represent a small but valuable segment.

Zomato could improve their visibility through:

- Search recommendations
- Featured listings
- Personalized discovery
- Promotional campaigns

---

## Recommendation 2 — Target mid-priced restaurants for delivery growth

Price Range 2 has the highest delivery adoption at **41.31%**, while Price Range 1 and higher-priced segments have lower adoption.

Zomato could investigate why adoption differs across price segments and design segment-specific delivery incentives.

---

## Recommendation 3 — Strengthen reservation adoption in premium segments

Table booking adoption is approximately **46% in Price Range 4** and **46% in Price Range 3**, compared with almost zero in Price Range 1.

Reservation-focused partnerships may therefore be particularly valuable among premium restaurants.

---

## Recommendation 4 — Focus on high-engagement cities

Cities such as Bangalore, Kolkata, Mumbai, and Chennai demonstrate high average customer engagement.

These markets may offer opportunities for:

- Restaurant partnerships
- Customer engagement campaigns
- Premium listings
- Restaurant growth programs

---

## Recommendation 5 — Help low-performing restaurants improve

The largest performance segment is **Lower Rating - Lower Engagement**, containing approximately **68% of restaurants**.

Zomato could provide restaurants with actionable performance insights around:

- Customer ratings
- Review volume
- Delivery availability
- Table booking
- Cuisine positioning

---

# 15. Important Analytical Limitations

The findings in this project should be interpreted with the following limitations:

1. **Correlation does not imply causation.**
   Observed relationships between ratings, price, delivery, table booking, and engagement do not prove that one factor causes another.

2. **Average Cost for Two contains multiple currencies.**
   Direct cross-country comparisons of the raw cost field are therefore inappropriate without currency normalization.

3. **Rating of 0 represents unrated restaurants in this dataset.**
   These should not be interpreted as restaurants receiving a genuine zero-star customer rating.

4. **Cuisine values represent cuisine categories/combinations.**
   For example, `North Indian, Chinese` is treated as one category in the analysis.

5. **Performance thresholds were defined for this project.**
   The thresholds of rating >= 4.0 and votes >= 100 are analytical definitions rather than industry standards.

6. **City-level comparisons use minimum restaurant-count thresholds where appropriate.**
   This reduces the influence of cities with very small samples.

---

# 16. Overall Conclusion

The analysis shows that restaurant performance varies substantially across price segments, cities, cuisines, and service offerings.

Higher-priced restaurants generally show stronger ratings and engagement, while online delivery and table booking are both associated with higher customer ratings and engagement.

At the same time, a large majority of restaurants fall into the lower-rating/lower-engagement segment, suggesting significant opportunities for performance improvement.

From a business perspective, the analysis highlights three major areas of opportunity:

- **Increase customer engagement**
- **Improve restaurant visibility and service adoption**
- **Use city, cuisine, and price-segment data for targeted strategies**

The combination of Python-based analysis, MySQL business queries, and Power BI visualization provides a complete analytical workflow from raw data to business recommendations.