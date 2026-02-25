import XCTest
@testable import UmainDesignToken

final class UmainDesignTokenTests: XCTestCase {

    // MARK: - CornerRadius

    func testCornerRadiusHasCases() {
        XCTAssertFalse(CornerRadius.allCases.isEmpty, "CornerRadius should have at least one case")
    }

    func testCornerRadiusValuesArePositive() {
        for radius in CornerRadius.allCases {
            XCTAssertGreaterThan(radius.value, 0, "\(radius) should have a positive value")
        }
    }

    func testCornerRadiusKnownValues() {
        XCTAssertEqual(CornerRadius.s.value, 3.0)
        XCTAssertEqual(CornerRadius.m.value, 6.0)
        XCTAssertEqual(CornerRadius.l.value, 10.0)
    }

    // MARK: - IconSize

    func testIconSizeHasCases() {
        XCTAssertFalse(IconSize.allCases.isEmpty, "IconSize should have at least one case")
    }

    func testIconSizeValuesArePositive() {
        for size in IconSize.allCases {
            XCTAssertGreaterThan(size.value, 0, "\(size) should have a positive value")
        }
    }

    func testIconSizeKnownValues() {
        XCTAssertEqual(IconSize.s.value, 18.0)
        XCTAssertEqual(IconSize.m.value, 20.0)
        XCTAssertEqual(IconSize.l.value, 28.0)
    }

    // MARK: - ImageSize

    func testImageSizeHasCases() {
        XCTAssertFalse(ImageSize.allCases.isEmpty, "ImageSize should have at least one case")
    }

    func testImageSizeValuesArePositive() {
        for size in ImageSize.allCases {
            XCTAssertGreaterThan(size.value, 0, "\(size) should have a positive value")
        }
    }

    // MARK: - SpatialSystem

    func testSpatialSystemHasCases() {
        XCTAssertFalse(SpatialSystem.allCases.isEmpty, "SpatialSystem should have at least one case")
    }

    func testSpatialSystemValuesAreFinite() {
        for spatial in SpatialSystem.allCases {
            XCTAssertTrue(spatial.value.isFinite, "\(spatial) should have a finite value")
        }
    }

    // MARK: - SemanticColors

    func testSemanticColorsHasCases() {
        XCTAssertFalse(SemanticColors.allCases.isEmpty, "SemanticColors should have at least one case")
    }

    func testSemanticColorsRawValuesNotEmpty() {
        for color in SemanticColors.allCases {
            XCTAssertFalse(color.rawValue.isEmpty, "\(color) should have a non-empty rawValue")
        }
    }

    // MARK: - Typography

    func testTypographyHasCases() {
        XCTAssertFalse(Typography.allCases.isEmpty, "Typography should have at least one case")
    }

    func testTypographyStylesHaveValidSizes() {
        for style in Typography.allCases {
            let s = style.style
            XCTAssertGreaterThan(s.size, 0, "\(style) should have a positive font size")
            XCTAssertGreaterThan(s.lineHeight, 0, "\(style) should have a positive line height")
            XCTAssertFalse(s.fontName.isEmpty, "\(style) should have a non-empty font name")
        }
    }

    // MARK: - Palette

    func testPaletteHasCases() {
        XCTAssertFalse(Palette.allCases.isEmpty, "Palette should have at least one case")
    }

    // MARK: - Gradientstops

    func testGradientstopsHasCases() {
        XCTAssertFalse(Gradientstops.allCases.isEmpty, "Gradientstops should have at least one case")
    }

    func testGradientstopsRawValuesNotEmpty() {
        for stop in Gradientstops.allCases {
            XCTAssertFalse(stop.rawValue.isEmpty, "\(stop) should have a non-empty rawValue")
        }
    }

    // MARK: - EffectsElevation

    func testEffectsElevationHasCases() {
        XCTAssertFalse(EffectsElevation.allCases.isEmpty, "EffectsElevation should have at least one case")
    }

    // MARK: - Spacing

    func testSpacingHasCases() {
        XCTAssertFalse(Spacing.allCases.isEmpty, "Spacing should have at least one case")
    }

    // MARK: - No Duplicate Cases

    func testNoDuplicateCornerRadiusCases() {
        let names = CornerRadius.allCases.map { "\($0)" }
        XCTAssertEqual(names.count, Set(names).count, "CornerRadius should have no duplicate case names")
    }

    func testNoDuplicateIconSizeCases() {
        let names = IconSize.allCases.map { "\($0)" }
        XCTAssertEqual(names.count, Set(names).count, "IconSize should have no duplicate case names")
    }

    func testNoDuplicateSemanticColorCases() {
        let names = SemanticColors.allCases.map { "\($0)" }
        XCTAssertEqual(names.count, Set(names).count, "SemanticColors should have no duplicate case names")
    }

    func testNoDuplicateTypographyCases() {
        let names = Typography.allCases.map { "\($0)" }
        XCTAssertEqual(names.count, Set(names).count, "Typography should have no duplicate case names")
    }

    // MARK: - Token Count Sanity

    func testMinimumTokenCounts() {
        XCTAssertGreaterThanOrEqual(CornerRadius.allCases.count, 5, "Should have at least 5 corner radius tokens")
        XCTAssertGreaterThanOrEqual(IconSize.allCases.count, 3, "Should have at least 3 icon size tokens")
        XCTAssertGreaterThanOrEqual(SemanticColors.allCases.count, 10, "Should have at least 10 semantic colors")
        XCTAssertGreaterThanOrEqual(Typography.allCases.count, 5, "Should have at least 5 typography styles")
        XCTAssertGreaterThanOrEqual(Palette.allCases.count, 5, "Should have at least 5 palette colors")
    }
}
