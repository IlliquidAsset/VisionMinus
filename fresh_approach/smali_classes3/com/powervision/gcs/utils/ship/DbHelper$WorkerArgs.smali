.class public final Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;
.super Ljava/lang/Object;
.source "DbHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/utils/ship/DbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "WorkerArgs"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public callback:Lcom/powervision/gcs/utils/ship/DbCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/powervision/gcs/utils/ship/DbCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public query:Ljava/lang/String;

.field public table:Ljava/lang/String;

.field public valueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field public values:Landroid/content/ContentValues;

.field public where:Ljava/lang/String;

.field public whereargs:[Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
