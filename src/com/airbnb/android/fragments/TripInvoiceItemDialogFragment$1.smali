.class Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment$1;
.super Ljava/lang/Object;
.source "TripInvoiceItemDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    invoke-static {}, Lcom/airbnb/android/analytics/TripChargesAnalytics;->trackTripChargesInvoiceItemDispute()V

    .line 66
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e0172

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e00b0

    const/16 v2, 0x3eb

    const v3, 0x7f0e0170

    const/16 v4, 0x3e9

    iget-object v5, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;

    invoke-virtual/range {v0 .. v5}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withDualButton(IIIILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    # getter for: Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->dismiss()V

    .line 70
    return-void
.end method
