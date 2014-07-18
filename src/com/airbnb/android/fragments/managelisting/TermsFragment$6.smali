.class Lcom/airbnb/android/fragments/managelisting/TermsFragment$6;
.super Ljava/lang/Object;
.source "TermsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/TermsFragment;->onStart()V
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
    .line 206
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/TermsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/TermsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/TermsFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/TermsFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->setTerms(Lcom/airbnb/android/models/Listing;)V

    .line 211
    return-void
.end method
