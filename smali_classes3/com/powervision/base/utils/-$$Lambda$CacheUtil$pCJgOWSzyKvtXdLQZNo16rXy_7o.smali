.class public final synthetic Lcom/powervision/base/utils/-$$Lambda$CacheUtil$pCJgOWSzyKvtXdLQZNo16rXy_7o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Lcom/powervision/base/utils/CacheUtil;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/base/utils/CacheUtil;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/base/utils/-$$Lambda$CacheUtil$pCJgOWSzyKvtXdLQZNo16rXy_7o;->f$0:Lcom/powervision/base/utils/CacheUtil;

    iput-object p2, p0, Lcom/powervision/base/utils/-$$Lambda$CacheUtil$pCJgOWSzyKvtXdLQZNo16rXy_7o;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Lcom/powervision/base/utils/-$$Lambda$CacheUtil$pCJgOWSzyKvtXdLQZNo16rXy_7o;->f$0:Lcom/powervision/base/utils/CacheUtil;

    iget-object v1, p0, Lcom/powervision/base/utils/-$$Lambda$CacheUtil$pCJgOWSzyKvtXdLQZNo16rXy_7o;->f$1:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/powervision/base/utils/CacheUtil;->lambda$copySql2Sd$0$CacheUtil(Landroid/content/Context;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
