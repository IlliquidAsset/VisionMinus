.class public final synthetic Lcom/powervision/media/ui/adapter/-$$Lambda$BurstAdapter$1$1wXsSKx03J3-TEaEnRMVSAD_q3I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/media/ui/adapter/BurstAdapter$1;

.field public final synthetic f$1:Lcom/powervision/localhttp/entity/BurstInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/media/ui/adapter/BurstAdapter$1;Lcom/powervision/localhttp/entity/BurstInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$BurstAdapter$1$1wXsSKx03J3-TEaEnRMVSAD_q3I;->f$0:Lcom/powervision/media/ui/adapter/BurstAdapter$1;

    iput-object p2, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$BurstAdapter$1$1wXsSKx03J3-TEaEnRMVSAD_q3I;->f$1:Lcom/powervision/localhttp/entity/BurstInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$BurstAdapter$1$1wXsSKx03J3-TEaEnRMVSAD_q3I;->f$0:Lcom/powervision/media/ui/adapter/BurstAdapter$1;

    iget-object v1, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$BurstAdapter$1$1wXsSKx03J3-TEaEnRMVSAD_q3I;->f$1:Lcom/powervision/localhttp/entity/BurstInfo;

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/adapter/BurstAdapter$1;->lambda$downloadSuccess$0$BurstAdapter$1(Lcom/powervision/localhttp/entity/BurstInfo;)V

    return-void
.end method
