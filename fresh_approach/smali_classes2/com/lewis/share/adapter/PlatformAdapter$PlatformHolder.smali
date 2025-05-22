.class Lcom/lewis/share/adapter/PlatformAdapter$PlatformHolder;
.super Ljava/lang/Object;
.source "PlatformAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewis/share/adapter/PlatformAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlatformHolder"
.end annotation


# instance fields
.field mPlatform:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lewis/share/adapter/PlatformAdapter;


# direct methods
.method constructor <init>(Lcom/lewis/share/adapter/PlatformAdapter;Landroid/view/View;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/lewis/share/adapter/PlatformAdapter$PlatformHolder;->this$0:Lcom/lewis/share/adapter/PlatformAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget p1, Lcom/lewis/share/R$id;->platform:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lewis/share/adapter/PlatformAdapter$PlatformHolder;->mPlatform:Landroid/widget/TextView;

    return-void
.end method
