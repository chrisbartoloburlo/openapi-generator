# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenapiPetstore.Model.MapTest do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :map_map_of_string,
    :map_of_enum_string,
    :direct_map,
    :indirect_map
  ]

  @type t :: %__MODULE__{
    :map_map_of_string => %{optional(String.t) => %{optional(String.t) => String.t}} | nil,
    :map_of_enum_string => %{optional(String.t) => String.t} | nil,
    :direct_map => %{optional(String.t) => boolean()} | nil,
    :indirect_map => %{optional(String.t) => boolean()} | nil
  }
end

defimpl Poison.Decoder, for: OpenapiPetstore.Model.MapTest do
  def decode(value, _options) do
    value
  end
end

