.class Lorg/xutils/image/ImageManagerImpl$2;
.super Ljava/lang/Object;
.source "ImageManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/image/ImageManagerImpl;->bind(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xutils/image/ImageManagerImpl;

.field final synthetic val$options:Lorg/xutils/image/ImageOptions;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lorg/xutils/image/ImageManagerImpl;Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/xutils/image/ImageManagerImpl$2;->this$0:Lorg/xutils/image/ImageManagerImpl;

    iput-object p2, p0, Lorg/xutils/image/ImageManagerImpl$2;->val$view:Landroid/widget/ImageView;

    iput-object p3, p0, Lorg/xutils/image/ImageManagerImpl$2;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lorg/xutils/image/ImageManagerImpl$2;->val$options:Lorg/xutils/image/ImageOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 50
    iget-object v0, p0, Lorg/xutils/image/ImageManagerImpl$2;->val$view:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/xutils/image/ImageManagerImpl$2;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lorg/xutils/image/ImageManagerImpl$2;->val$options:Lorg/xutils/image/ImageOptions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lorg/xutils/image/ImageLoader;->doBind(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;ILorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    return-void
.end method
