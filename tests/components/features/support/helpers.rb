require "byebug"
def wait_for(retries = 5)
  i = 0

  sleep 1 until yield(i += 1) || i >= retries
end


def wait_page_load()
  sleep 1
end

def wait_for_criteria(seconds = 5)
  max_time = Time.now + seconds
  delay = 0.1

  while Time.now < max_time do
    result = yield

    if result
      return result
      sleep delay
    end
  end

  raise "criteria failed"
end

