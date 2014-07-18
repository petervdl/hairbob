.class Lcom/airbnb/android/views/NightsSelector$6;
.super Ljava/lang/Object;
.source "NightsSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/NightsSelector;->focusToNights()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/NightsSelector;

.field final synthetic val$scrollBy:I


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/NightsSelector;I)V
    .registers 3

    .prologue
    .line 205
    iput-object p1, p0, Lcom/airbnb/android/views/NightsSelector$6;->this$0:Lcom/airbnb/android/views/NightsSelector;

    iput p2, p0, Lcom/airbnb/android/views/NightsSelector$6;->val$scrollBy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 208
    iget-object v0, p0, Lcom/airbnb/android/views/NightsSelector$6;->this$0:Lcom/airbnb/android/views/NightsSelector;

    iget-object v0, v0, Lcom/airbnb/android/views/NightsSelector;->mNightsScrollView:Lcom/airbnb/android/views/VerboseHorizontalScrollView;

    iget v1, p0, Lcom/airbnb/android/views/NightsSelector$6;->val$scrollBy:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/views/VerboseHorizontalScrollView;->smoothScrollBy(II)V

    .line 209
    return-void
.end method
