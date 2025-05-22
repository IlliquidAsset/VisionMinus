.class public final synthetic Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$TgxBz1bOZ8m4gA7S22KmMeY-kiM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;

.field public final synthetic f$1:Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$TgxBz1bOZ8m4gA7S22KmMeY-kiM;->f$0:Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;

    iput-object p2, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$TgxBz1bOZ8m4gA7S22KmMeY-kiM;->f$1:Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$TgxBz1bOZ8m4gA7S22KmMeY-kiM;->f$0:Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;

    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraPhotoAdapter$TgxBz1bOZ8m4gA7S22KmMeY-kiM;->f$1:Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;

    invoke-virtual {v0, v1, p1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->lambda$convert$8$CameraPhotoAdapter(Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;Landroid/view/View;)V

    return-void
.end method
