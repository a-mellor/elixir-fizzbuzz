defmodule FizzbuzzTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "only numbers returns printed numbers" do
    excexute_main = fn ->
      Fizzbuzz.go(1, 2)
    end

    assert capture_io(excexute_main) == "1\n2\n"
  end

  test "only fizz" do
    excexute_main = fn ->
      Fizzbuzz.go(3, 3)
    end

    assert capture_io(excexute_main) == "fizz\n"
  end

  test "only buzz" do
    excexute_main = fn ->
      Fizzbuzz.go(5, 5)
    end

    assert capture_io(excexute_main) == "buzz\n"
  end

  test "only fizzbuzz" do
    excexute_main = fn ->
      Fizzbuzz.go(15, 15)
    end

    assert capture_io(excexute_main) == "fizzbuzz\n"
  end

  test "numbers 1 to 15" do
    excexute_main = fn ->
      Fizzbuzz.go(1, 15)
    end

    assert capture_io(excexute_main) == "1\n2\nfizz\n4\nbuzz\nfizz\n7\n8\nfizz\n" <>
                                        "buzz\n11\nfizz\n13\n14\nfizzbuzz\n"
  end
end
