# frozen_string_literal: true

Puppet::Type.type(:dnf_module_stream).provide(:dnf_module_stream) do
  desc 'Unique provider'

  def stream
    nil
  end

  def stream=(target_stream)
    nil
  end
end
