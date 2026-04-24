# BMS_TicketingPlatform

# BMS Database Design 
##  Problem Statement

Design a database schema for a movie ticketing platform (like BMS) where:

* Users can view movies in a theatre
* View next 7 days of shows
* See show timings for each movie

---

##  Entities

* City
* Theatre
* Screen
* Movie
* Show
* ShowTiming

---

##  Normalization

The schema follows:

* 1NF (Atomic values)
* 2NF (No partial dependency)
* 3NF (No transitive dependency)
* BCNF (Every determinant is a candidate key)

---

## 🗂️ Tables Overview

| Table      | Description                 |
| ---------- | --------------------------- |
| City       | Stores city info            |
| Theatre    | Theatre details             |
| Screen     | Screens in a theatre        |
| Movie      | Movie metadata              |
| ShowTable  | Movie scheduled on a screen |
| ShowTiming | Multiple timings per show   |

---

## How to Run

1. Execute `schema.sql`
2. Execute `sample_data.sql`
3. Run queries from `queries.sql`

---

##  Sample Query

Fetch all shows for a given theatre and date:
```sql
SELECT
m.MovieName,
s.ShowDate,
st.ShowTime,
sc.ScreenName,
t.TheatreName
FROM ShowTable s
JOIN Movie m ON s.MovieID = m.MovieID
JOIN Screen sc ON s.ScreenID = sc.ScreenID
JOIN Theatre t ON sc.TheatreID = t.TheatreID
JOIN ShowTiming st ON s.ShowID = st.ShowID
WHERE
t.TheatreID = 1
AND s.ShowDate = '2026-04-25'
ORDER BY m.MovieName, st.ShowTime;
```

---
