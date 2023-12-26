using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Deneme4.Migrations
{
    /// <inheritdoc />
    public partial class MigrationDenemeStock : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "StockId",
                table: "OrderDetails",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateTable(
                name: "Stocks",
                columns: table => new
                {
                    StockId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    StockName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Unit = table.Column<int>(type: "int", nullable: false),
                    Price = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Stocks", x => x.StockId);
                });

            migrationBuilder.CreateIndex(
                name: "IX_OrderDetails_StockId",
                table: "OrderDetails",
                column: "StockId");

            migrationBuilder.AddForeignKey(
                name: "FK_OrderDetails_Stocks_StockId",
                table: "OrderDetails",
                column: "StockId",
                principalTable: "Stocks",
                principalColumn: "StockId",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_OrderDetails_Stocks_StockId",
                table: "OrderDetails");

            migrationBuilder.DropTable(
                name: "Stocks");

            migrationBuilder.DropIndex(
                name: "IX_OrderDetails_StockId",
                table: "OrderDetails");

            migrationBuilder.DropColumn(
                name: "StockId",
                table: "OrderDetails");
        }
    }
}
