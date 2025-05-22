.class public final synthetic Lcom/powervision/login/ui/adapter/-$$Lambda$CountrySelectAdapter$YO6zoFE1yE99jKp7oMsRnJY5QiA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/login/ui/adapter/CountrySelectAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/login/ui/adapter/CountrySelectAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/login/ui/adapter/-$$Lambda$CountrySelectAdapter$YO6zoFE1yE99jKp7oMsRnJY5QiA;->f$0:Lcom/powervision/login/ui/adapter/CountrySelectAdapter;

    iput p2, p0, Lcom/powervision/login/ui/adapter/-$$Lambda$CountrySelectAdapter$YO6zoFE1yE99jKp7oMsRnJY5QiA;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/powervision/login/ui/adapter/-$$Lambda$CountrySelectAdapter$YO6zoFE1yE99jKp7oMsRnJY5QiA;->f$0:Lcom/powervision/login/ui/adapter/CountrySelectAdapter;

    iget v1, p0, Lcom/powervision/login/ui/adapter/-$$Lambda$CountrySelectAdapter$YO6zoFE1yE99jKp7oMsRnJY5QiA;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/powervision/login/ui/adapter/CountrySelectAdapter;->lambda$onBindViewHolder$0$CountrySelectAdapter(ILandroid/view/View;)V

    return-void
.end method
