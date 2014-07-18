.class Lcom/airbnb/android/fragments/SearchFilterFragment$9;
.super Ljava/lang/Object;
.source "SearchFilterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SearchFilterFragment;->setupCheckboxes(Landroid/view/View;Lcom/airbnb/android/models/SearchInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SearchFilterFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SearchFilterFragment;)V
    .registers 2

    .prologue
    .line 265
    iput-object p1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment$9;->this$0:Lcom/airbnb/android/fragments/SearchFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 269
    const v0, 0x7f0e0365

    const v1, 0x7f0e0367

    const v2, 0x7f0e0563

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->createSingleButtonDialog(III)Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment$9;->this$0:Lcom/airbnb/android/fragments/SearchFilterFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/SearchFilterFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 271
    return-void
.end method
