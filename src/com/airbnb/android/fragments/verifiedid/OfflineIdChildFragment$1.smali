.class Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment$1;
.super Ljava/lang/Object;
.source "OfflineIdChildFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;)V
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;

    const v3, 0x7f0e07ca

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0e07c0

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/activities/WebViewActivity;->intentForUrlAndTitle(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;->startActivity(Landroid/content/Intent;)V

    .line 40
    return-void
.end method
