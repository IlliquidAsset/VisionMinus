.class Lcom/lewis/edit/utils/filter/IFImageFilter$4;
.super Ljava/lang/Object;
.source "IFImageFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewis/edit/utils/filter/IFImageFilter;->initInputTexture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewis/edit/utils/filter/IFImageFilter;


# direct methods
.method constructor <init>(Lcom/lewis/edit/utils/filter/IFImageFilter;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/lewis/edit/utils/filter/IFImageFilter$4;->this$0:Lcom/lewis/edit/utils/filter/IFImageFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter$4;->this$0:Lcom/lewis/edit/utils/filter/IFImageFilter;

    invoke-static {v0}, Lcom/lewis/edit/utils/filter/IFImageFilter;->access$000(Lcom/lewis/edit/utils/filter/IFImageFilter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/lewis/edit/utils/filter/IFImageFilter$4;->this$0:Lcom/lewis/edit/utils/filter/IFImageFilter;

    invoke-static {v1}, Lcom/lewis/edit/utils/filter/IFImageFilter;->access$100(Lcom/lewis/edit/utils/filter/IFImageFilter;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/lewis/edit/utils/filter/IFImageFilter$4;->this$0:Lcom/lewis/edit/utils/filter/IFImageFilter;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Ljp/co/cyberagent/android/gpuimage/OpenGlUtils;->loadTexture(Landroid/graphics/Bitmap;IZ)I

    move-result v0

    iput v0, v1, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterSourceTexture5:I

    return-void
.end method
