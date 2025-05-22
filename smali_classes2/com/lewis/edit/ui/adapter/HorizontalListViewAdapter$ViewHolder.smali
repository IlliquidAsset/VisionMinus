.class Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "HorizontalListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field filterImage:Landroid/widget/ImageView;

.field filterName:Landroid/widget/TextView;

.field filterSelect:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;


# direct methods
.method constructor <init>(Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter$ViewHolder;->this$0:Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
