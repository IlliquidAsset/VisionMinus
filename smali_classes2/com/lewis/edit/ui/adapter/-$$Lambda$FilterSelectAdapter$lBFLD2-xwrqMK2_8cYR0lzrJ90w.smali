.class public final synthetic Lcom/lewis/edit/ui/adapter/-$$Lambda$FilterSelectAdapter$lBFLD2-xwrqMK2_8cYR0lzrJ90w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;

.field public final synthetic f$1:Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/ui/adapter/-$$Lambda$FilterSelectAdapter$lBFLD2-xwrqMK2_8cYR0lzrJ90w;->f$0:Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;

    iput-object p2, p0, Lcom/lewis/edit/ui/adapter/-$$Lambda$FilterSelectAdapter$lBFLD2-xwrqMK2_8cYR0lzrJ90w;->f$1:Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/-$$Lambda$FilterSelectAdapter$lBFLD2-xwrqMK2_8cYR0lzrJ90w;->f$0:Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;

    iget-object v1, p0, Lcom/lewis/edit/ui/adapter/-$$Lambda$FilterSelectAdapter$lBFLD2-xwrqMK2_8cYR0lzrJ90w;->f$1:Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;

    invoke-virtual {v0, v1, p1}, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;->lambda$onBindViewHolder$0$FilterSelectAdapter(Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;Landroid/view/View;)V

    return-void
.end method
