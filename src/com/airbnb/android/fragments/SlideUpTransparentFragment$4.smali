.class Lcom/airbnb/android/fragments/SlideUpTransparentFragment$4;
.super Ljava/lang/Object;
.source "SlideUpTransparentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)V
    .registers 2

    .prologue
    .line 139
    iput-object p1, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$4;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$4;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mSlideUpActivity:Lcom/airbnb/android/activities/SlideUpTransparentActivity;
    invoke-static {v0}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$600(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)Lcom/airbnb/android/activities/SlideUpTransparentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/SlideUpTransparentActivity;->dismissContent(Z)V

    .line 143
    return-void
.end method
