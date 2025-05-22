.class public interface abstract Lcom/powervision/gcs/utils/ship/Db$Interest;
.super Ljava/lang/Object;
.source "Db.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/utils/ship/Db;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Interest"
.end annotation


# static fields
.field public static final CREATE_INTEREST_TABLE:Ljava/lang/String; = "CREATE TABLE  interest (_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, type integer, interest_desc text, interest_address text, imgfile text, interest_latlng text UNIQUE);"

.field public static final FISH_IMG_FILEPATH:Ljava/lang/String; = "imgfile"

.field public static final INTEREST_ADDRESS:Ljava/lang/String; = "interest_address"

.field public static final INTEREST_DESC:Ljava/lang/String; = "interest_desc"

.field public static final INTEREST_LATLNG:Ljava/lang/String; = "interest_latlng"

.field public static final INTEREST_TABLE_NAME:Ljava/lang/String; = "interest"

.field public static final INTEREST_TYPE:Ljava/lang/String; = "type"
