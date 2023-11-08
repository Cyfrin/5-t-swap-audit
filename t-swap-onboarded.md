# Protocol Security Review Questions

## Basic Info

| Protocol Name                                |                          |
| -------------------------------------------- | ------------------------ |
| Website                                      | tswap xyz (example)      |
| Link To Documentation                        | [README.md](./README.md) |
| Key Point of Contact (Name, Email, Telegram) | Me                       |
| Link to Whitepaper, if any (optional)        | [README.md](./README.md) |

## Code Details

| Link to Repo to be audited                              |                                          |
| ------------------------------------------------------- | ---------------------------------------- |
| Commit hash                                             | f426f57731208727addc20adb72cb7f5bf29dc03 |
| Number of Contracts in Scope                            | 2                                        |
| Total SLOC for contracts in scope                       | 374                                      |
| Complexity Score                                        | 174                                      |
| How many external protocols does the code interact with | Many ERC20s                              |
| Overall test coverage for code under audit              | 40.91%                                   |

### In Scope Contracts                                                    

*You could run `tree ./src/ | sed 's/└/#/g; s/──/--/g; s/├/#/g; s/│ /|/g; s/│/|/g'` to get a nice output that works with pandoc for all files in `./src/`*

```
src/PoolFactory.sol
src/TSwapPool.sol
```

## Protocol Details

Tell us a little bit about your protocol.

| Current Status                                                      |                                               |
| ------------------------------------------------------------------- | --------------------------------------------- |
| Is the project a fork of the existing protocol                      | Yes (but for the course we are pretending no) |
| Specify protocol (only if Yes for prev question)                    | UniswapV1                                     |
| Does the project use rollups?                                       | No                                            |
| Will the protocol be multi-chain?                                   | No                                            |
| Specify chain(s) on which protocol is/ would be deployed            | ETH                                           |
| Does the protocol use external oracles?                             | No                                            |
| Does the protocol use external AMMs?                                | No                                            |
| Does the protocol use zero-knowledge proofs?                        | No                                            |
| Which ERC20 tokens do you expect to interact with smart contracts   | All                                           |
| Which ERC721 tokens do you expect to interact with smart contracts? | None                                          |
| Are ERC777 tokens expected to interact with protocol?               | Any                                           |
| Are there any off-chain processes (keeper bots etc.)                | No                                            |
| If yes to the above, please explain                                 |                                               |

## Protocol Risks

Tell us what you consider acceptable risks. We will ignore evaluating some risks based on this feedback.

| Should we evaluate risks related to centralization?                          |            |
| ---------------------------------------------------------------------------- | ---------- |
| Should we evaluate the risks of rogue protocol admin capturing user funds?   | No         |
| Should we evaluate risks related to deflationary/ inflationary ERC20 tokens? | Maybe? Idk |
| Should we evaluate risks due to fee-on-transfer tokens?                      | huh        |
| Should we evaluate risks due to rebasing tokens?                             | what       |
| Should we evaluate risks due to the pausing of any external contracts?       | huh        |
| Should we evaluate risks associated with external oracles (if they exist)?   | No?        |
| Should we evaluate risks related to blacklisted users for specific tokens?   | Maybe?     |
| Is the code expected to comply with any specific EIPs?                       | No         |
| If yes for the above, please share the EIPs                                  |            |

## Known Issues

Protocol devs are already aware of & working on the following issues and/or consider them acceptable risks.

None

## Previous Audits and Reports

Please share existing audit reports.

None

## Resources

Resources that can help us understand protocol better.

### Flow Charts / Design Docs

- 

### Explainer Videos

None

### Articles / Blogs

None

## The Rekt Test

1. Do you have all actors, roles, and privileges documented?
2. Do you keep documentation of all the external services, contracts, and oracles you rely on?
3. Do you have a written and tested incident response plan?
4. Do you document the best ways to attack your system?
5. Do you perform identity verification and background checks on all employees?
6. Do you have a team member with security defined in their role?
7. Do you require hardware security keys for production systems?
8. Does your key management system require multiple humans and physical steps?
9. Do you define key invariants for your system and test them on every commit?
10. Do you use the best automated tools to discover security issues in your code?
11. Do you undergo external audits and maintain a vulnerability disclosure or bug bounty program?
12. Have you considered and mitigated avenues for abusing users of your system?

## Post Deployment Planning

1. Are you planning on using a bug bounty program? Which one/where?
2. What is your monitoring solution? What are you monitoring for?
3. Who is your incident response team? 