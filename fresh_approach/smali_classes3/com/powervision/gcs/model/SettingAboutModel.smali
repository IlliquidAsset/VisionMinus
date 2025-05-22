.class public Lcom/powervision/gcs/model/SettingAboutModel;
.super Ljava/lang/Object;
.source "SettingAboutModel.java"


# instance fields
.field public isShow:Z

.field public name:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/powervision/gcs/model/SettingAboutModel;->name:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/powervision/gcs/model/SettingAboutModel;->value:Ljava/lang/String;

    .line 15
    iput-boolean p3, p0, Lcom/powervision/gcs/model/SettingAboutModel;->isShow:Z

    return-void
.end method
