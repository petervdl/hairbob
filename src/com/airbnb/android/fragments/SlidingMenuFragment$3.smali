.class Lcom/airbnb/android/fragments/SlidingMenuFragment$3;
.super Ljava/lang/Object;
.source "SlidingMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SlidingMenuFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SlidingMenuFragment;)V
    .registers 2

    .prologue
    .line 149
    iput-object p1, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$3;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$3;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->isCurrentUserAuthorized()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 154
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$3;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$3;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v2

    const-string/jumbo v4, "account"

    invoke-static {v1, v2, v3, v4}, Lcom/airbnb/android/activities/ROActivity;->intentForUserId(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->startActivity(Landroid/content/Intent;)V

    .line 156
    :cond_2e
    return-void
.end method
