.class public final synthetic Lcom/powervision/localhttp/-$$Lambda$AP03MessageDispatchUtils$ngwqG00KvwEw8Ihcm2Y-yt4BtZw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/localhttp/AP03MessageDispatchUtils;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/localhttp/AP03MessageDispatchUtils;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/localhttp/-$$Lambda$AP03MessageDispatchUtils$ngwqG00KvwEw8Ihcm2Y-yt4BtZw;->f$0:Lcom/powervision/localhttp/AP03MessageDispatchUtils;

    iput-object p2, p0, Lcom/powervision/localhttp/-$$Lambda$AP03MessageDispatchUtils$ngwqG00KvwEw8Ihcm2Y-yt4BtZw;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powervision/localhttp/-$$Lambda$AP03MessageDispatchUtils$ngwqG00KvwEw8Ihcm2Y-yt4BtZw;->f$0:Lcom/powervision/localhttp/AP03MessageDispatchUtils;

    iget-object v1, p0, Lcom/powervision/localhttp/-$$Lambda$AP03MessageDispatchUtils$ngwqG00KvwEw8Ihcm2Y-yt4BtZw;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->lambda$startRequestByCmdId$0$AP03MessageDispatchUtils(Ljava/lang/String;)V

    return-void
.end method
