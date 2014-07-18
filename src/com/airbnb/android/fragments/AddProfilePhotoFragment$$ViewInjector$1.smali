.class final Lcom/airbnb/android/fragments/AddProfilePhotoFragment$$ViewInjector$1;
.super Ljava/lang/Object;
.source "AddProfilePhotoFragment$$ViewInjector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AddProfilePhotoFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/AddProfilePhotoFragment;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/airbnb/android/fragments/AddProfilePhotoFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AddProfilePhotoFragment;)V
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment$$ViewInjector$1;->val$target:Lcom/airbnb/android/fragments/AddProfilePhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "p0"    # Landroid/view/View;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment$$ViewInjector$1;->val$target:Lcom/airbnb/android/fragments/AddProfilePhotoFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->onTakePhotoClick()V

    .line 37
    return-void
.end method
