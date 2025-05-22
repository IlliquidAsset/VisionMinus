.class public final synthetic Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$NhJxYIICKyJFLXYvKjv_58VBHbM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/powervision/media/ui/activity/MediaLibActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/media/ui/activity/MediaLibActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$NhJxYIICKyJFLXYvKjv_58VBHbM;->f$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$NhJxYIICKyJFLXYvKjv_58VBHbM;->f$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->lambda$doDownload$6$MediaLibActivity(Ljava/lang/Boolean;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
