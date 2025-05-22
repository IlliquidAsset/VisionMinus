.class public Lcom/powervision/gcs/model/JSInterface;
.super Ljava/lang/Object;
.source "JSInterface.java"


# static fields
.field public static final ONLINEREPORT:I = 0x1

.field private static jsInf:Lcom/powervision/gcs/model/JSInterface;


# instance fields
.field private mContext:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sput-object p0, Lcom/powervision/gcs/model/JSInterface;->jsInf:Lcom/powervision/gcs/model/JSInterface;

    .line 17
    iput-object p1, p0, Lcom/powervision/gcs/model/JSInterface;->mContext:Landroid/app/Activity;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/app/Activity;)Lcom/powervision/gcs/model/JSInterface;
    .locals 2

    const-class v0, Lcom/powervision/gcs/model/JSInterface;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/powervision/gcs/model/JSInterface;->jsInf:Lcom/powervision/gcs/model/JSInterface;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/powervision/gcs/model/JSInterface;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/model/JSInterface;-><init>(Landroid/app/Activity;)V

    sput-object v1, Lcom/powervision/gcs/model/JSInterface;->jsInf:Lcom/powervision/gcs/model/JSInterface;

    .line 24
    :cond_0
    sget-object p0, Lcom/powervision/gcs/model/JSInterface;->jsInf:Lcom/powervision/gcs/model/JSInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public toIntent(Ljava/lang/String;I)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method
