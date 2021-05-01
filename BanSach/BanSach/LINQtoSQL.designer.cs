﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BanSach
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="QLSACH")]
	public partial class LINQtoSQLDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertSach(Sach instance);
    partial void UpdateSach(Sach instance);
    partial void DeleteSach(Sach instance);
    #endregion
		
		public LINQtoSQLDataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["QLSACHConnectionString"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public LINQtoSQLDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public LINQtoSQLDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public LINQtoSQLDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public LINQtoSQLDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<Sach> Saches
		{
			get
			{
				return this.GetTable<Sach>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Sach")]
	public partial class Sach : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private string _IDSach;
		
		private string _TenSach;
		
		private string _LoaiSach;
		
		private string _TacGia;
		
		private string _NhaXuatBan;
		
		private int _SoLuong;
		
		private double _Gia;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIDSachChanging(string value);
    partial void OnIDSachChanged();
    partial void OnTenSachChanging(string value);
    partial void OnTenSachChanged();
    partial void OnLoaiSachChanging(string value);
    partial void OnLoaiSachChanged();
    partial void OnTacGiaChanging(string value);
    partial void OnTacGiaChanged();
    partial void OnNhaXuatBanChanging(string value);
    partial void OnNhaXuatBanChanged();
    partial void OnSoLuongChanging(int value);
    partial void OnSoLuongChanged();
    partial void OnGiaChanging(double value);
    partial void OnGiaChanged();
    #endregion
		
		public Sach()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IDSach", DbType="NChar(10) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
		public string IDSach
		{
			get
			{
				return this._IDSach;
			}
			set
			{
				if ((this._IDSach != value))
				{
					this.OnIDSachChanging(value);
					this.SendPropertyChanging();
					this._IDSach = value;
					this.SendPropertyChanged("IDSach");
					this.OnIDSachChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TenSach", DbType="NChar(100) NOT NULL", CanBeNull=false)]
		public string TenSach
		{
			get
			{
				return this._TenSach;
			}
			set
			{
				if ((this._TenSach != value))
				{
					this.OnTenSachChanging(value);
					this.SendPropertyChanging();
					this._TenSach = value;
					this.SendPropertyChanged("TenSach");
					this.OnTenSachChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LoaiSach", DbType="NChar(100) NOT NULL", CanBeNull=false)]
		public string LoaiSach
		{
			get
			{
				return this._LoaiSach;
			}
			set
			{
				if ((this._LoaiSach != value))
				{
					this.OnLoaiSachChanging(value);
					this.SendPropertyChanging();
					this._LoaiSach = value;
					this.SendPropertyChanged("LoaiSach");
					this.OnLoaiSachChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TacGia", DbType="NChar(100) NOT NULL", CanBeNull=false)]
		public string TacGia
		{
			get
			{
				return this._TacGia;
			}
			set
			{
				if ((this._TacGia != value))
				{
					this.OnTacGiaChanging(value);
					this.SendPropertyChanging();
					this._TacGia = value;
					this.SendPropertyChanged("TacGia");
					this.OnTacGiaChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NhaXuatBan", DbType="NChar(100) NOT NULL", CanBeNull=false)]
		public string NhaXuatBan
		{
			get
			{
				return this._NhaXuatBan;
			}
			set
			{
				if ((this._NhaXuatBan != value))
				{
					this.OnNhaXuatBanChanging(value);
					this.SendPropertyChanging();
					this._NhaXuatBan = value;
					this.SendPropertyChanged("NhaXuatBan");
					this.OnNhaXuatBanChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SoLuong", DbType="Int NOT NULL")]
		public int SoLuong
		{
			get
			{
				return this._SoLuong;
			}
			set
			{
				if ((this._SoLuong != value))
				{
					this.OnSoLuongChanging(value);
					this.SendPropertyChanging();
					this._SoLuong = value;
					this.SendPropertyChanged("SoLuong");
					this.OnSoLuongChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Gia", DbType="Float NOT NULL")]
		public double Gia
		{
			get
			{
				return this._Gia;
			}
			set
			{
				if ((this._Gia != value))
				{
					this.OnGiaChanging(value);
					this.SendPropertyChanging();
					this._Gia = value;
					this.SendPropertyChanged("Gia");
					this.OnGiaChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591