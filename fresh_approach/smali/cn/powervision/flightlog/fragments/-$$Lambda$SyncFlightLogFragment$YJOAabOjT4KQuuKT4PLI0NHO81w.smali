.class public final synthetic Lcn/powervision/flightlog/fragments/-$$Lambda$SyncFlightLogFragment$YJOAabOjT4KQuuKT4PLI0NHO81w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/powervision/flightlog/fragments/-$$Lambda$SyncFlightLogFragment$YJOAabOjT4KQuuKT4PLI0NHO81w;->f$0:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    iput-object p2, p0, Lcn/powervision/flightlog/fragments/-$$Lambda$SyncFlightLogFragment$YJOAabOjT4KQuuKT4PLI0NHO81w;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/powervision/flightlog/fragments/-$$Lambda$SyncFlightLogFragment$YJOAabOjT4KQuuKT4PLI0NHO81w;->f$0:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    iget-object v1, p0, Lcn/powervision/flightlog/fragments/-$$Lambda$SyncFlightLogFragment$YJOAabOjT4KQuuKT4PLI0NHO81w;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->lambda$parseUserAllDataJson$1$SyncFlightLogFragment(Ljava/lang/String;)V

    return-void
.end method
