.class Lcom/airbnb/android/fragments/SearchFilterFragment$8;
.super Ljava/lang/Object;
.source "SearchFilterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SearchFilterFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 229
    iput-object p1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment$8;->this$0:Lcom/airbnb/android/fragments/SearchFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment$8;->this$0:Lcom/airbnb/android/fragments/SearchFilterFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/SearchFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/SearchFilterActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/SearchFilterActivity;->dismissContent(Z)V

    .line 234
    return-void
.end method
