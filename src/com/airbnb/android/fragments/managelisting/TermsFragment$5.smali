.class Lcom/airbnb/android/fragments/managelisting/TermsFragment$5;
.super Ljava/lang/Object;
.source "TermsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/TermsFragment;->setupMaximumStayLength()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/TermsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/TermsFragment;)V
    .registers 2

    .prologue
    .line 171
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment$5;->this$0:Lcom/airbnb/android/fragments/managelisting/TermsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 175
    const v1, 0x7f0e04f8

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment$5;->this$0:Lcom/airbnb/android/fragments/managelisting/TermsFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/TermsFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getMaxNights()I

    move-result v2

    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;->newInstance(II)Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;

    move-result-object v0

    .line 176
    .local v0, "f":Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment$5;->this$0:Lcom/airbnb/android/fragments/managelisting/TermsFragment;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 177
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment$5;->this$0:Lcom/airbnb/android/fragments/managelisting/TermsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "fragment_stay_length"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 178
    return-void
.end method
