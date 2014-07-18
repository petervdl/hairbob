.class Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1;
.super Ljava/lang/Object;
.source "PayoutEnvoyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/PayoutEnvoyFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/PayoutEnvoyFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/PayoutEnvoyFragment;)V
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutEnvoyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutEnvoyFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/PayoutEnvoyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/activities/PayoutActivity;

    invoke-virtual {v2}, Lcom/airbnb/android/activities/PayoutActivity;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "countryCode":Ljava/lang/String;
    new-instance v1, Lcom/airbnb/android/requests/PayoutEnvoyRequest;

    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutEnvoyFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/PayoutEnvoyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/activities/PayoutActivity;

    invoke-virtual {v2}, Lcom/airbnb/android/activities/PayoutActivity;->getTrustParameters()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    new-instance v3, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1$1;-><init>(Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/airbnb/android/requests/PayoutEnvoyRequest;-><init>(Lcom/airbnb/android/utils/Strap;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 95
    .local v1, "request":Lcom/airbnb/android/requests/PayoutEnvoyRequest;
    invoke-virtual {v1}, Lcom/airbnb/android/requests/PayoutEnvoyRequest;->execute()V

    .line 96
    return-void
.end method
