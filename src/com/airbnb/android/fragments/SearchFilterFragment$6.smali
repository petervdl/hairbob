.class Lcom/airbnb/android/fragments/SearchFilterFragment$6;
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
    .line 202
    iput-object p1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment$6;->this$0:Lcom/airbnb/android/fragments/SearchFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment$6;->this$0:Lcom/airbnb/android/fragments/SearchFilterFragment;

    # invokes: Lcom/airbnb/android/fragments/SearchFilterFragment;->toggleAmenity(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/airbnb/android/fragments/SearchFilterFragment;->access$800(Lcom/airbnb/android/fragments/SearchFilterFragment;Landroid/view/View;)V

    .line 207
    return-void
.end method
