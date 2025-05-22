.class public final synthetic Lcom/powervision/media/ui/adapter/-$$Lambda$GridRecyclerAdapter$2$mX4nyp7UfBChHk2i8zoGOEgr8qM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$2;

.field public final synthetic f$1:Lcom/powervision/localhttp/entity/FileInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$2;Lcom/powervision/localhttp/entity/FileInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$GridRecyclerAdapter$2$mX4nyp7UfBChHk2i8zoGOEgr8qM;->f$0:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$2;

    iput-object p2, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$GridRecyclerAdapter$2$mX4nyp7UfBChHk2i8zoGOEgr8qM;->f$1:Lcom/powervision/localhttp/entity/FileInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$GridRecyclerAdapter$2$mX4nyp7UfBChHk2i8zoGOEgr8qM;->f$0:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$2;

    iget-object v1, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$GridRecyclerAdapter$2$mX4nyp7UfBChHk2i8zoGOEgr8qM;->f$1:Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$2;->lambda$downloadSuccess$0$GridRecyclerAdapter$2(Lcom/powervision/localhttp/entity/FileInfo;)V

    return-void
.end method
