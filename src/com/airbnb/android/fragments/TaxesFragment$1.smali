.class Lcom/airbnb/android/fragments/TaxesFragment$1;
.super Ljava/lang/Object;
.source "TaxesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/TaxesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/TaxesFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/TaxesFragment;)V
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lcom/airbnb/android/fragments/TaxesFragment$1;->this$0:Lcom/airbnb/android/fragments/TaxesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/airbnb/android/fragments/TaxesFragment$1;->this$0:Lcom/airbnb/android/fragments/TaxesFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/TaxesFragment$1;->this$0:Lcom/airbnb/android/fragments/TaxesFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/TaxesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/TaxesFragment$1;->this$0:Lcom/airbnb/android/fragments/TaxesFragment;

    const v3, 0x7f0e01d7

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/TaxesFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/activities/WebViewActivity;->intentForUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/TaxesFragment;->startActivity(Landroid/content/Intent;)V

    .line 60
    return-void
.end method
