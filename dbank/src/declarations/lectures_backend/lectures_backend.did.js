export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'checkBalance' : IDL.Func([], [IDL.Float64], []),
    'topUp' : IDL.Func([IDL.Float64], [IDL.Float64], []),
    'withdraw' : IDL.Func([IDL.Float64], [IDL.Float64], []),
  });
};
export const init = ({ IDL }) => { return []; };
