#-*-Mode:elixir;coding:utf-8;tab-width:2;c-basic-offset:2;indent-tabs-mode:()-*-
# ex: set ft=elixir fenc=utf-8 sts=2 ts=2 sw=2 et nomod:

defmodule CloudIServiceSend do
  use Mix.Project

  def project do
    [app: :cloudi_service_send,
     version: "2.0.4",
     language: :erlang,
     erlc_options: [
       :debug_info,
       :warnings_as_errors,
       :strict_validation,
       :warn_bif_clash,
       :warn_deprecated_function,
       :warn_export_all,
       :warn_export_vars,
       :warn_exported_vars,
       :warn_obsolete_guard,
       :warn_shadow_vars,
       :warn_unused_import,
       :warn_unused_function,
       :warn_unused_record,
       :warn_unused_vars],
     description: description(),
     package: package(),
     deps: deps()]
  end

  defp deps do
    [{:cloudi_core, ">= 2.0.4"}]
  end

  defp description do
    "Erlang/Elixir Cloud Framework Service Request Send CloudI Service"
  end

  defp package do
    [files: ~w(src doc rebar.config README.markdown LICENSE),
     maintainers: ["Michael Truog"],
     licenses: ["MIT"],
     links: %{"Website" => "https://cloudi.org",
              "GitHub" => "https://github.com/CloudI/" <>
                          "cloudi_service_send"}]
   end
end
