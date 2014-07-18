.class Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment$1;
.super Ljava/lang/Object;
.source "VerifiedIdDialogSummaryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment;->dismiss()V

    .line 67
    return-void
.end method
