{
  "chain": {
    "@type": "/relayer.chains.ethereum.config.ChainConfig",
    "chain_id": "ibc1",
    "eth_chain_id": 9999,
    "rpc_addr": "http://localhost:8545",
    "signer": {
      "@type": "/relayer.signers.hd.SignerConfig",
      "mnemonic": "math razor capable expose worth grape metal sunset metal sudden usage scheme",
      "path": "m/44'/60'/0'/0/0"
    },
    "ibc_address": $IBC_ADDRESS,
    "initial_send_checkpoint": 0,
    "initial_recv_checkpoint": 0,
    "enable_debug_trace": true,
    "average_block_time_msec": 6000,
    "max_retry_for_inclusion": 5,
    "allow_lc_functions": {
      "lc_address": $LC_ADDRESS,
      "selectors": [
        "0xa97c61d6",
        "0x6ac73aa0"
      ]
    },
    "gas_estimate_rate": {
      "numerator": 3,
      "denominator": 2
    },
    "max_gas_limit": 10000000,
    "tx_type": "auto",
    "blocks_per_event_query": 1000,
    "abi_paths": ["../../chains/bsc/contracts/abis"]
  },
  "prover": {
    "@type": "/relayer.provers.lcp.config.ProverConfig",
    "origin_prover": {
      "@type": "/relayer.provers.parlia.config.ProverConfig",
      "trusting_period": "86400s",
      "max_clock_drift": "0",
      "refresh_threshold_rate": {
        "numerator": 1,
        "denominator": 2
      },
      "refreshBlockDifferenceThreshold": 10000
    },
    "lcp_service_address": "localhost:50051",
    "mrenclave": $MRENCLAVE,
    "allowed_quote_statuses": ["GROUP_OUT_OF_DATE", "SW_HARDENING_NEEDED"],
    "allowed_advisory_ids": ["INTEL-SA-00219","INTEL-SA-00289","INTEL-SA-00334","INTEL-SA-00477","INTEL-SA-00614","INTEL-SA-00615","INTEL-SA-00617", "INTEL-SA-00828"],
    "key_expiration": 604800,
    "elc_client_id": "xx-parlia-1",
    "message_aggregation": true,
    "is_debug_enclave": true,
    "operators": [
      "0x9722414d09f43fb02235d739B50F4C027F43e657"
    ],
    "operator_signer": {
      "@type": "/relayer.provers.lcp.signers.raw.SignerConfig",
      "private_key": "0x8a94e9f944a297c402a997aa9a60026ce47a6e018192d111c1703176bbc26651"
    },
    "operators_eip712_cosmos_chain_params": {
      "chain_id": "ibc0",
      "prefix": "ibc"
    }
  }
}
