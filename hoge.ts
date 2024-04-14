// Userのフリーの時間
type User = {
  free_times:[{
    start: Date,
    end: Date
  }]
}

type Hour = number;

type Options = {
  Users: User[]
  total_time: Hour // 集まりたい合計時間
  duration: { // ハッカソンの期間
    start:Date,
    end:Date
  }
}

// 集まる時間
type Event = {
  start:Date,
  end:Date
}

// Userのフリータイムと集まりたい合計時間とハッカソンの期間から集まる時間[]を求める
function process(options:Options):Result<Event[],ErrorType>{
  throw new Error('Not implemented');
}