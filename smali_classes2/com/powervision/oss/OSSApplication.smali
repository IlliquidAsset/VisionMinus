.class public Lcom/powervision/oss/OSSApplication;
.super Landroid/app/Application;
.source "OSSApplication.java"


# static fields
.field private static sApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/app/Application;
    .locals 1

    .line 9
    sget-object v0, Lcom/powervision/oss/OSSApplication;->sApplication:Landroid/app/Application;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 14
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 15
    sput-object p0, Lcom/powervision/oss/OSSApplication;->sApplication:Landroid/app/Application;

    return-void
.end method
