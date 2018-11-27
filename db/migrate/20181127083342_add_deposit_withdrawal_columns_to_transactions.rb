class AddDepositWithdrawalColumnsToTransactions < ActiveRecord::Migration[5.2]
  def change
    add_column :transactions, :deposit, :boolean, default: false
  	add_column :transactions, :withdrawal, :boolean, default: false
  end
end
