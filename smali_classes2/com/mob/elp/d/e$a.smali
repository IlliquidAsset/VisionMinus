.class Lcom/mob/elp/d/e$a;
.super Ljava/lang/Object;
.source "GetBitmaps.java"

# interfaces
.implements Lcom/mob/elp/d/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/elp/d/e;->a(Ljava/util/ArrayList;IILcom/mob/elp/d/e$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/elp/d/e;


# direct methods
.method constructor <init>(Lcom/mob/elp/d/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/elp/d/e$a;->a:Lcom/mob/elp/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/elp/d/e$a;->a:Lcom/mob/elp/d/e;

    invoke-static {v0}, Lcom/mob/elp/d/e;->a(Lcom/mob/elp/d/e;)[Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object p2, v0, p1

    return-void
.end method
