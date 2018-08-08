# language: en

# 特性
# 可读性, 使用领域词汇表

Feature: Calculator

  # 场景大纲
  @common
  Scenario Outline: Calculate Expression
    # 上下文
    Given the input "<input>"
    # 事件
    When the calculator is run
    # 结果
    Then the output should be "<output>"

    Examples:
      | input  | output |
      | 2+2    | 4      |
      | 98+1   | 99     |
      | 4/2    | 2      |
