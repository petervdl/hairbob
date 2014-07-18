.class Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment$2;
.super Ljava/lang/Object;
.source "TripInvoiceItemDialogFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->onActivityResult(IILandroid/content/Intent;)V
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
        "Lcom/airbnb/android/requests/DisputeTripInvoiceItemRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;)V
    .registers 2

    .prologue
    .line 99
    iput-object p1, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    const/16 v1, 0x3ea

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 109
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/DisputeTripInvoiceItemRequest;)V
    .registers 6
    .param p1, "response"    # Lcom/airbnb/android/requests/DisputeTripInvoiceItemRequest;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    const/16 v1, 0x3ea

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 103
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->dismiss()V

    .line 104
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 99
    check-cast p1, Lcom/airbnb/android/requests/DisputeTripInvoiceItemRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment$2;->onResponse(Lcom/airbnb/android/requests/DisputeTripInvoiceItemRequest;)V

    return-void
.end method
