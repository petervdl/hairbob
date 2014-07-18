.class public Lcom/airbnb/android/views/AirAutoCompleteTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "AirAutoCompleteTextView.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/Typefaceable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/views/AirAutoCompleteTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/views/AirAutoCompleteTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-static {p1, p2, p0}, Lcom/airbnb/android/views/AirTextView$TextHelper;->init(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/airbnb/android/interfaces/Typefaceable;)V

    .line 27
    return-void
.end method

.method public setFont(Lcom/airbnb/android/utils/FontManager$Font;)V
    .registers 2
    .param p1, "font"    # Lcom/airbnb/android/utils/FontManager$Font;

    .prologue
    .line 31
    invoke-static {p1, p0}, Lcom/airbnb/android/views/AirTextView$TextHelper;->setFont(Lcom/airbnb/android/utils/FontManager$Font;Lcom/airbnb/android/interfaces/Typefaceable;)V

    .line 32
    return-void
.end method
