﻿using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Deneme4.Migrations
{
    /// <inheritdoc />
    public partial class Customer_name_ekle : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "CustomerName",
                table: "CustomerAddresses",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "CustomerName",
                table: "CustomerAddresses");
        }
    }
}
