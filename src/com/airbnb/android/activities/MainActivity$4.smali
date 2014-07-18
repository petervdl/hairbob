.class Lcom/airbnb/android/activities/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/MainActivity;->buildTrebuchet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/CampaignsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/MainActivity;)V
    .registers 2

    .prologue
    .line 637
    iput-object p1, p0, Lcom/airbnb/android/activities/MainActivity$4;->this$0:Lcom/airbnb/android/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 658
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/CampaignsRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/CampaignsRequest;

    .prologue
    .line 642
    invoke-static {}, Lcom/airbnb/android/utils/Trebuchet;->clearLoggedExperiments()V

    .line 644
    iget-object v2, p0, Lcom/airbnb/android/activities/MainActivity$4;->this$0:Lcom/airbnb/android/activities/MainActivity;

    invoke-virtual {v2}, Lcom/airbnb/android/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 645
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    const v2, 0x7f080038

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/SlidingMenuFragment;

    .line 646
    .local v0, "f":Lcom/airbnb/android/fragments/SlidingMenuFragment;
    if-eqz v0, :cond_17

    .line 647
    invoke-virtual {v0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->refreshMenu()V

    .line 650
    :cond_17
    iget-object v2, p0, Lcom/airbnb/android/activities/MainActivity$4;->this$0:Lcom/airbnb/android/activities/MainActivity;

    # getter for: Lcom/airbnb/android/activities/MainActivity;->mIsResumed:Z
    invoke-static {v2}, Lcom/airbnb/android/activities/MainActivity;->access$500(Lcom/airbnb/android/activities/MainActivity;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 651
    iget-object v2, p0, Lcom/airbnb/android/activities/MainActivity$4;->this$0:Lcom/airbnb/android/activities/MainActivity;

    # invokes: Lcom/airbnb/android/activities/MainActivity;->handleUpgradeDialog()V
    invoke-static {v2}, Lcom/airbnb/android/activities/MainActivity;->access$600(Lcom/airbnb/android/activities/MainActivity;)V

    .line 652
    iget-object v2, p0, Lcom/airbnb/android/activities/MainActivity$4;->this$0:Lcom/airbnb/android/activities/MainActivity;

    invoke-virtual {v2}, Lcom/airbnb/android/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/fragments/AppDisabledDialogFragment;->checkIfNeedShowAppDisabled(Landroid/support/v4/app/FragmentManager;)V

    .line 654
    :cond_2d
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 637
    check-cast p1, Lcom/airbnb/android/requests/CampaignsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/MainActivity$4;->onResponse(Lcom/airbnb/android/requests/CampaignsRequest;)V

    return-void
.end method
