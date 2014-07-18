.class public Lcom/airbnb/android/services/HHListWidgetService;
.super Landroid/widget/RemoteViewsService;
.source "HHListWidgetService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    new-instance v0, Lcom/airbnb/android/services/HHListRemoteViewsFactory;

    invoke-virtual {p0}, Lcom/airbnb/android/services/HHListWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/airbnb/android/services/HHListRemoteViewsFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method
