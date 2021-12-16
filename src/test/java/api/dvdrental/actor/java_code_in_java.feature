Feature:How to use java code?
  Background:

    Scenario: How to use java code?
      * def minusDate =
      """
      function(month,day){
      var LocalDate=Java.type('java.time.LocalDate')
      var today=LocalDate.now()
      var pastDate=today.minusMonths(month).minusDays(day)
      var DateTimeFormatter=Java.type('java.time.format.DateTimeFormatter')
      var formatter=DateTimeFormatter.ofPattern("MM-dd-yyyy")
      return pastDate.format(formatter)
      }
      """
      * print minusDate(2,2)