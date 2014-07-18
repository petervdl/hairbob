.class Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment$1;
.super Ljava/lang/Object;
.source "ProPhotographyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;)V
    .registers 2

    .prologue
    .line 323
    iput-object p1, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->dismiss()V

    .line 328
    return-void
.end method
